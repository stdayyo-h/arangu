import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Arangu',
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * .8,
          width: MediaQuery.of(context).size.width * .83,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 0) // changes position of shadow
                    ),
                BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 0) // changes position of shadow
                    ),
              ],
              borderRadius: BorderRadius.circular(16),
              color: Colors.transparent),
          child: Column(children: [
            SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  'assets/img.png',
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Visual Crosswords with \nDavid Kwong ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra aenean ullamcorper quis neque tempor. Aliquam, etiam diam diam sagittis, tristique vestibulum id sed nisl. Aliquet sit natoque tortor erat tortor eget. Velit eget etiam eros tellus accumsan feugiat in aliquam. Posuere cum cursus ornare integer. Cras senectus laoreet cursus adipiscing turpis bibendum lectus pretium suspendisse.Quis eros orci donec nisl. Integer ultrices nec.',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide.none)),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff2EFFCD))),
                onPressed: null,
                child: const Text(
                  'Play game',
                  style: const TextStyle(color: Colors.white),
                ))
          ]),
        ),
      ),
    );
  }
}
