class Note {
  int id;
  String title;
  String content;
  DateTime modifiefTime;
  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiefTime,
  });
}

List<Note> sampleNote = [
  Note(
      id: 0,
      title: "My Sweet diray",
      content: "content",
      modifiefTime: DateTime.now()),
  Note(id: 1, title: 'try', content: "content", modifiefTime: DateTime.now()),
];
