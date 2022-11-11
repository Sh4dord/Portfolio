part of 'stack_cubit.dart';

class StackState extends Equatable {
  const StackState({required this.stacks});

  final List<StackEntity> stacks;

  StackState copyWith({
    List<StackEntity>? stacks,
  }) {
    return StackState(
      stacks: stacks ?? this.stacks,
    );
  }

  @override
  List<Object?> get props => [stacks];
}
