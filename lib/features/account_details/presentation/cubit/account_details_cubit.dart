import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/cubit/account_details_state.dart';

class AccountDetailsCubit extends Cubit<AccountDetailsState> {
  AccountDetailsCubit() : super(AccountDetailsState());
}
