import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/usecases/cat_breed_usecase.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'cat_breed_event.dart';
part 'cat_breed_state.dart';
part 'cat_breed_bloc.freezed.dart';

@injectable
class CatBreedBloc extends Bloc<CatBreedEvent, CatBreedState> {
  final CatBreedUsecase _catBreedUsecase;

  CatBreedBloc(this._catBreedUsecase) : super(const CatBreedState.initial()) {
    on<_Started>(_onStarted);
    on<_LoadMore>(_onLoadMore, transformer: droppable());
    on<_Search>(_onSearch, transformer: restartable());
  }

  Future<void> _onStarted(_Started event, Emitter<CatBreedState> emit) async {
    emit(const CatBreedState.loading());

    final result = await _catBreedUsecase(0);

    result.fold(
      (failure) =>
          emit(const CatBreedState.error('Failed to fetch cat breeds')),
      (catBreeds) => emit(
        CatBreedState.loaded(
          catBreeds: catBreeds,
          page: 0,
          hasReachedMax: catBreeds.isEmpty,
          currentQuery: '',
          isLoadingMore: false,
        ),
      ),
    );
  }

  Future<void> _onSearch(_Search event, Emitter<CatBreedState> emit) async {
    final query = event.query.toLowerCase();

    if (query.isEmpty) {
      add(const CatBreedEvent.started());
      return Future.value();
    }

    emit(const CatBreedState.loading());

    final result = await _catBreedUsecase.search(query);
    result.fold(
      (failure) =>
          emit(const CatBreedState.error('Failed to search cat breeds')),
      (catBreeds) => emit(
        CatBreedState.loaded(
          catBreeds: catBreeds,
          page: 0,
          hasReachedMax: true,
          currentQuery: query,
          isLoadingMore: false,
        ),
      ),
    );
  }

  Future<void> _onLoadMore(_LoadMore event, Emitter<CatBreedState> emit) async {
    final currentState = state.mapOrNull(loaded: (s) => s);

    if (currentState == null) return;
    if (currentState.isLoadingMore) return;
    if (currentState.hasReachedMax) return;
    if (currentState.currentQuery.isNotEmpty) return;

    emit(currentState.copyWith(isLoadingMore: true));

    emit(currentState.copyWith(isLoadingMore: true));

    final nextPage = currentState.page + 1;
    final result = await _catBreedUsecase(nextPage);

    result.fold(
      (failure) =>
          emit(currentState.copyWith(isLoadingMore: false)),
      (catBreeds) {
        final hasReachedMax = catBreeds.isEmpty;
        final updatedBreeds = List<CatBreed>.from(currentState.catBreeds)
          ..addAll(catBreeds);

        emit(
          currentState.copyWith(
            catBreeds: updatedBreeds,
            page: nextPage,
            hasReachedMax: hasReachedMax,
            isLoadingMore: false,
          ),
        );
      },
    );
  }
}
