import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selected_cubits_state.dart';

class SelectedCubitsCubit extends Cubit<SelectedCubitsState> {
  SelectedCubitsCubit() : super(SelectedCubitsInitial());
  Set<String> selectedContacts = {};
  void toggleSelection(String name) {
    if (selectedContacts.contains(name)) {
      selectedContacts.remove(name);
    } else {
      selectedContacts.add(name);
    }
    emit(SelectedCubitsUpdate(Set.from(selectedContacts))); // Emit new state
  }
}
