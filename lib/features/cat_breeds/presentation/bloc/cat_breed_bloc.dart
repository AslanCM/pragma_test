import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/usecases/cat_breed_usecase.dart';

part 'cat_breed_event.dart';
part 'cat_breed_state.dart';
part 'cat_breed_bloc.freezed.dart';

@injectable
class CatBreedBloc extends Bloc<CatBreedEvent, CatBreedState> {
  final CatBreedUsecase _catBreedUsecase;

  CatBreedBloc(this._catBreedUsecase) : super(const CatBreedState.initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
      _Started event,
      Emitter<CatBreedState> emit,
      ) async {
    emit(const CatBreedState.loading());

    final result = await _catBreedUsecase();

    result.fold(
      (failure) => emit(const CatBreedState.error('Failed to fetch cat breeds')),
      (catBreeds) => emit(CatBreedState.loaded(catBreeds)),
    );
  }
}