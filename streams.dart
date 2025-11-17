/*
  Streams in Dart
  ----------------
  A stream is a sequence of asynchronous events that arrive over time. Instead of
  receiving all data immediately, a stream notifies you whenever a new event or 
  piece of data is available.

  Streams are essential for handling operations that produce data gradually,
  such as network calls, user input, or real-time updates.

  Key Ideas:
  - A stream behaves like a pipe: data is added at one end, and any listener 
    on the other end receives the data asynchronously.
  - Streams can be consumed using:
      • `await for` — for asynchronous iteration
      • `listen()`   — for reacting to events as they occur

  Basic Example Syntax:
    Stream<T> streamName = Stream<T>.fromIterable(iterable);

  Real-World Uses of Streams:
  1. Handling network responses (e.g., receiving data from APIs)
  2. Handling database operations that return results asynchronously
  3. Reading or writing files (which are asynchronous operations)
  4. Listening to user input events (e.g., clicks, text changes)
  5. Managing animations or any continuous time-based updates

  Types of Streams:
  -----------------
  1. Single-Subscription Stream:
     - Can be listened to only once.
     - Used for most asynchronous tasks (HTTP requests, file operations).

  2. Broadcast Stream:
     - Can be listened to multiple times by multiple listeners.
     - Used for continuous or repeating events (UI events, notifications).

  StreamController:
  -----------------
  - A StreamController lets you create and manage your own stream.
  - It provides:
      • a stream  → to listen to incoming events
      • a sink    → to add events, errors, or close the stream
  - You can manually control when data is emitted.

  Sink:
  -----
  - A sink is used to add data into a stream.
  - You can continue adding data until the stream is closed.
*/

import 'dart:async'; //

void main(List<String> args) async {
  // countDown().listen(
  //   (val) {
  //     print(val);
  //   },
  //   onDone: () {
  //     print('Done');
  //   },
  //   onError: (e) {
  //     print(e);
  //   },
  // );

  counting();
}

// async* - means that the function returns a stream that can be listened to multiple times
Stream<String> countDown() async* { 
  /*List<String> lyrics = [
    "पल-पल जीना मुहाल मेरा तेरे बिना",
    "ये सारे नारे बेकार तेरी आँखों के सिवा",
    "घर नहीं जाता, मैं बहार, रहता तेरा इंतज़ार",
    "मेरे ख़्वाबों में आ ना कर के सोलह सिंगार",
    "मैं अब क्यों होश में आता नहीं?",
    "सुकून ये दिल क्यों पता नहीं?",
    "क्यों तोरुण खुद से जो थे वादे",
    "के अब ये इश्क निभाना नहीं?",
    "मैं हमेशा तुम से जो ये चेहरा",
    "दोबारा नज़र मिलाना नहीं",
    "ये दुनिया जाने मेरा दर्द",
    "तुझे ये नज़र क्यों आता नहीं?",
    "सोहनेया, यूं तेरा शरमाना मेरी जान ना लेले",
    "कान के पीछे ज़ुल्फ छुपाना, मेरी जान, क्या कहे",
    "ज़ालिमा, तौबा तेरा नखरा, इस के वार, क्या कहें",
    "थाम के बेटे दिल को घायल, कहीं हार ना बैठे",
    "तेरी नज़रें मुझसे क्या कहती हैं?",
    "सराय मय वफ़ा बहती है",
    "थोरी-थोरी सी राज़ी, थोरी सी ख़फ़ा रहती है",
    "लोग हैं ज़ालिम बराय, सराय मय जाफ़ा देखी है",
    "ये दुनिया तेरी नहीं, मैंने तुझमें हया देखी है",
    "जीना मुहाल मेरा तेरे बिना",
    "ये सारे नारे बेकार तेरी आँखों के सिवा",
    "घर नहीं जाता, मैं बहार, रहता तेरा इंतज़ार",
    "मेरे ख़्वाबों में आ ना कर के सोलह सिंगार",
  ]; 
  */

  // for (var line in lyrics) {
  //   yield line;
  //   await Future.delayed(Duration(milliseconds: 800));
  // }

  // for (int i = 10; i > 0; i--) {
  //   yield i; // The yield keyword helps return values one by one instead of all at once
  //   await Future.delayed(Duration(seconds: 1));
  // }

  // return Stream.periodic(Duration(seconds: 1), (val) {
  //   return val;
  // }); // this will return a stream of 1, and stucked in infinite loop.
}

void counting() {
 final controller = StreamController<int>();

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.addError('Something went wrong');
  controller.sink.close();

  controller.stream.listen((val){
    print(val);
  },onError: (err){
    print(err);
  });

  controller.close();
}