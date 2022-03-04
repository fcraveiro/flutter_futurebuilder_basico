import 'dart:developer';
import 'package:supabase/supabase.dart';
import 'model.dart';

const supabaseUrl = '';
const supabaseKey = '';

class Conecta {
  final client = SupabaseClient(supabaseUrl, supabaseKey);

  Future<List<ClassCliente>> getAll() async {
    final response = await client
        .from('clientes')
        .select()
        .order('cliNome', ascending: true)
        .execute();
    if (response.error == null) {
      final dataList = response.data as List;
      return (dataList.map((map) => ClassCliente.fromJson(map)).toList());
    }
    log('Error fetching notes: ${response.error!.message}');
    return [];
  }
}
