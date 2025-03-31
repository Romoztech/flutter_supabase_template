import 'package:supabase_flutter/flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateProvider<SupabaseSession>(_authStream());

Stream<SupabaseSession?> _authStream() {
  return supabaseClient.auth.onSessionChanged;
  }
