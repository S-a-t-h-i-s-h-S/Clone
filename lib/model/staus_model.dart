class StatusModel {
  final String name;
  final String time;
  final String pic;

  StatusModel(this.name, this.time, this.pic);
}

List<StatusModel> statusData = [
  new StatusModel(
      'Stanley', '10:30 PM', 'https://randomuser.me/api/portraits/men/15.jpg'),
  new StatusModel(
      'Rose', '09:30 PM', 'https://randomuser.me/api/portraits/women/0.jpg'),
  new StatusModel(
      'Jose', 'Yesterday', 'https://randomuser.me/api/portraits/women/1.jpg'),
  new StatusModel(
      'Rock', 'Today', 'https://randomuser.me/api/portraits/men/1.jpg'),
  new StatusModel(
      'Dwaney', '5:00 AM', 'https://randomuser.me/api/portraits/women/2.jpg'),
  new StatusModel(
      'Mark', '2:00AM', 'https://randomuser.me/api/portraits/men/11.jpg'),
  new StatusModel(
      'Steward', '10:00 PM', 'https://randomuser.me/api/portraits/women/3.jpg'),
  new StatusModel(
      'Johnny', '1:00 AM', 'https://randomuser.me/api/portraits/men/10.jpg'),
  new StatusModel('Sam Sundar', 'Yesterday',
      'https://randomuser.me/api/portraits/men/7.jpg'),
  new StatusModel(
      'Beula', '12:00 AM', 'https://randomuser.me/api/portraits/women/20.jpg'),
  new StatusModel(
      'Jack', 'Today', 'https://randomuser.me/api/portraits/men/17.jpg'),
];
