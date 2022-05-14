import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(boxShadow: const [
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
      ], borderRadius: BorderRadius.circular(16), color: Colors.transparent),
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
          padding: EdgeInsets.symmetric(horizontal: 10.0),
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
    );
  }
}
