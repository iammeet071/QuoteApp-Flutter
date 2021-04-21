import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_crad.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text: 'Roses are dead, Love is fake', author: '- Rose'),
    Quote(
        text:
            'So tell me where should I go, to the left where nothing is right or to the right where nothing is left?',
        author: '- Meet'),
    Quote(
        text: 'Be yourself; everyone else is already taken.', author: '- IDK'),
    Quote(
        text:
            'I used to think the worst thing in life was to end up all alone, it’s not. The worst thing in life is to end up with people that make you feel all alone.',
        author: '- IDK'),
    Quote(text: 'Those who fly solo have the strongest wings', author: 'IDK')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Quote of Day'),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: quotes
                .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
