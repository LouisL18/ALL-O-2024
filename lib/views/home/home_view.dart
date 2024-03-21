import 'package:all_o_2024/app/supabase_provider.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('Se connecter'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const Text('S\'inscrire'),
          ),
          FutureBuilder(
            future: getTest(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Text(snapshot.data.toString());
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ],
      )),
    );
  }

  Future<String> getTest() async {
    final supabase = SupabaseProvider().client;
    final data = await supabase.from('ANNONCE').select('DescriptionAnnonce');
    return data.toString();
  }
}
