import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  //공고 날짜 표시
  String toJobDateString() {
    var result = '';
    final nowDay = DateTime.now();
    if (this.toLocal().difference(nowDay.toLocal()).inDays.abs() <= 2 &&
        this.toLocal().day == nowDay.toLocal().day) {
      result += '오늘 ';
    } else if (this.toLocal().difference(nowDay.toLocal()).inDays.abs() <= 2 &&
        this.toLocal().day - nowDay.toLocal().day == 1) {
      result += '내일 ';
    } else {
      result +=
          '${this.toLocal().month}.${this.toLocal().day}(${getKoreanWeekDay(this.toLocal().weekday)}) ';
    }
    result +=
        '${this.toLocal().hour.toString().padLeft(2, '0')}:${this.toLocal().minute.toString().padLeft(2, '0')}';
    return result;
  }

  //2자리 시간 표기
  String toPaddedTimeString() {
    return '${this.toLocal().hour.toString().padLeft(2, '0')}:${this.toLocal().minute.toString().padLeft(2, '0')}';
  }

  //채팅 날짜 표시
  String toChatDateString() {
    final nowDay = DateTime.now();
    //오늘일 경우
    if (this.toLocal().day == nowDay.toLocal().day) {
      return DateFormat('a hh:mm')
          .format(this)
          .replaceFirst('AM', '오전')
          .replaceFirst('PM', '오후');
    }
    //연도가 같을 경우
    if (this.toLocal().year == nowDay.toLocal().year) {
      return DateFormat('MM월 dd일').format(this);
    }
    //  연도가 다를 경우
    return DateFormat('yyyy. MM. dd').format(this);
  }

  //채팅 날짜 경계 디바이더 표시
  String toChatDividerDateString() {
    return '${this.year}. ${this.month}. ${this.day}.(${getKoreanWeekDay(this.toLocal().weekday)})';
  }
}

String getKoreanWeekDay(int weekDay) {
  switch (weekDay) {
    case 1:
      return '월';
    case 2:
      return '화';
    case 3:
      return '수';
    case 4:
      return '목';
    case 5:
      return '금';
    case 6:
      return '토';
    case 7:
      return '일';
    default:
      return '';
  }
}
