part of 'selected_cubits_cubit.dart';

@immutable
abstract class SelectedCubitsState {}

class SelectedCubitsInitial extends SelectedCubitsState {}

class SelectedCubitsUpdate extends SelectedCubitsState {
  final Set<String> selectedContacts;
  SelectedCubitsUpdate(this.selectedContacts);
}
