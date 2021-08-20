class Call {
  final String name;
  final String time;
  final String avatar;

  Call({required this.name, required this.time, required this.avatar});
}

List<Call> dummyCall = [
  Call(
      name: "Iron Man",
      time: "02 minutes ago",
      avatar:
          "https://dailysuperheroes.com/wp-content/uploads/2020/02/tony-stark.jpg"),
  Call(
      name: "Batman",
      time: "04 minutes ago",
      avatar:
          "https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/wocy4a1ouxda7l3g_1610704906.jpeg"),
  Call(
      name: "Spider-Man",
      time: "10 minutes ago",
      avatar: "https://i.ytimg.com/vi/53zSjqiq3ms/maxresdefault.jpg"),
  Call(
      name: "Iron Man",
      time: "10 days ago",
      avatar:
          "https://dailysuperheroes.com/wp-content/uploads/2020/02/tony-stark.jpg"),
];
