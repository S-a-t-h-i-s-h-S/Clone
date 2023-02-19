class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(this.name, this.msg, this.time, this.pic);
}

List<ChatModel> chatdata = [
  new ChatModel('Stanley', 'Would You Like To Travel With Me ?', '10:30 PM',
      'https://randomuser.me/api/portraits/men/15.jpg'),
  new ChatModel(
      'Rose',
      "I Hope That, When I've Built Up My Savings, I'll Be Able To Travel To Mexico.",
      '09:30 PM',
      'https://randomuser.me/api/portraits/women/0.jpg'),
  new ChatModel('Jose', "I'm Tired Of Watching Television", 'Yesterday',
      'https://randomuser.me/api/portraits/women/1.jpg'),
  new ChatModel(
      'Rock',
      'No One Can Make You Feel Inferior Without Your Consent',
      '7:00 PM',
      'https://randomuser.me/api/portraits/men/1.jpg'),
  new ChatModel('Dwaney', 'He Denied Knowing Anything About Their Plans.',
      '5:00 AM', 'https://randomuser.me/api/portraits/women/2.jpg'),
  new ChatModel('Mark', 'He Is At His Desk.', 'Today',
      'https://randomuser.me/api/portraits/men/11.jpg'),
  new ChatModel('Steward', 'We All Agreed; It Was A Magnificent Evening.',
      '10:00 PM', 'https://randomuser.me/api/portraits/women/3.jpg'),
  new ChatModel('Johnny', "I'm Coming Right Now.", '1:00 AM',
      'https://randomuser.me/api/portraits/men/10.jpg'),
  new ChatModel('Sam Sundar', "In The End, We All Felt Like We Ate Too Much.",
      'Yesterday', 'https://randomuser.me/api/portraits/men/7.jpg'),
  new ChatModel('Beula', "Sorry, We Don't Have Any Vacancies.", '12:00 AM',
      'https://randomuser.me/api/portraits/women/20.jpg'),
  new ChatModel(
      'Jack',
      "I Heard That A Woman Stabbed A Man For Eating Her Lunch.",
      'Today',
      'https://randomuser.me/api/portraits/men/17.jpg'),
];
