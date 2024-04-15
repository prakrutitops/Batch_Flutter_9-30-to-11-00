import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main()
{
  runApp(MaterialApp(
      routes:
    {
      'loading': (_) => LoadingListPage(),
    },
      home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Shimmer Effect"),),
        body: Column
          (
            children:
            [
              ListTile
                (
                title: const Text('Loading List'),
                onTap: () => Navigator.of(context).pushNamed('loading'),
                )
            ],
          ),
      );
  }
}
class LoadingListPage extends StatefulWidget
{
  const LoadingListPage({super.key});

  @override
  State<LoadingListPage> createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage>
{
  bool _enabled = true;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Data"),),
        body: Container
          (
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.00,vertical: 16.00),
            child: Column
              (
                mainAxisSize: MainAxisSize.max,
                children:
                [
                    Expanded
                      (
                        child: Shimmer.fromColors
                          (
                            baseColor: Colors.grey,
                            highlightColor: Colors.white,
                            enabled: _enabled,
                            child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (_, __) =>

                                  Padding
                                    (
                                      padding: const EdgeInsets.only(bottom: 8.0),
                                      child: Row
                                        (
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:
                                          [

                                            Container
                                              (
                                                width: 48.0,
                                                height: 48.0,
                                                color: Colors.white,
                                            ),
                                            const Padding
                                              (
                                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                                              ),
                                            Expanded(child: Column
                                              (
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children:
                                                [
                                                  Container
                                                    (
                                                      width: double.infinity,
                                                      height: 8.0,
                                                      color: Colors.white,
                                                    ),
                                                  const Padding
                                                    (
                                                      padding: EdgeInsets.symmetric(vertical: 2.0),
                                                    ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 8.0,
                                                    color: Colors.white,
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.symmetric(vertical: 2.0),
                                                  ),
                                                  Container(
                                                    width: 40.0,
                                                    height: 8.0,
                                                    color: Colors.white,
                                                  ),

                                                ],
                                              ))
                                          ],
                                      )
                                  )


                              ),
                          ),

                      ),

            Padding
            (
            padding: const EdgeInsets.symmetric(vertical: 8.0),

            child: ElevatedButton(
              onPressed: ()
              {
                  setState(()
                  {
                    _enabled = !_enabled;
                  });
              },
            child: Text( _enabled ? 'Stop' : 'Play',
                style: Theme.of(context).textTheme.button!.copyWith
                  (
                    fontSize: 18.0,
                    color: _enabled ? Colors.redAccent : Colors.green)),),

         )


                ],
              )

          ),
      );
  }
}

