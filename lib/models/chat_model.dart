class Chatmodel {
  final String name;
  final String time;
  final String message;
  final String avatar;

  Chatmodel(
      {required this.name,
      required this.time,
      required this.avatar,
      required this.message});
}

List<Chatmodel> dummyData = [
  Chatmodel(
      name: "Iron Man",
      time: "12:30 PM",
      message: "Hey Owais!, need new armor? ",
      avatar:
          "https://dailysuperheroes.com/wp-content/uploads/2020/02/tony-stark.jpg"),
  Chatmodel(
      name: "Batman",
      time: "10:30 AM",
      message: "Hey Owais!, wanna join bat-family?",
      avatar:
          "https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/wocy4a1ouxda7l3g_1610704906.jpeg"),
  Chatmodel(
      name: "Spider-Man",
      time: "09:30 AM",
      message:
          "Hey Owais!, if tony sends you an armor take it and give it to me please",
      avatar: "https://i.ytimg.com/vi/53zSjqiq3ms/maxresdefault.jpg"),
  Chatmodel(
      name: "Black Panther",
      time: "08:30 AM",
      message: "Wakanda whatsapp ui clone is this? ",
      avatar:
          "https://cdn.vox-cdn.com/thumbor/Qc6Pr_ZkQOHUHyu0U7IceoHV4Ns=/1400x1050/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/22189319/Screen_Shot_2020_12_21_at_3.47.56_PM.png"),
  Chatmodel(
      name: "Super-Man",
      time: "07:30 AM",
      message: "Don't do that kryptonite shit again. IT'S NOT FUNNY!",
      avatar:
          "https://static.wikia.nocookie.net/dcmovies/images/a/a8/Superman_BvS-1.jpg/revision/latest/scale-to-width-down/250?cb=20140703183629"),
];
