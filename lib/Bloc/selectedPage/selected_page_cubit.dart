import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selected_page_state.dart';

class SelectedPageCubit extends Cubit<SelectedPageState> {
  SelectedPageCubit() : super(SelectedPageState(page: 0));

  void setPage(int page) => emit(SelectedPageState(page: page));
}
