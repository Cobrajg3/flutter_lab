class Subjects {
  Subjects(this.subjects);
  Map<int, String> subjects;
}

class Schedule {
  Schedule(Map<String, Map<int, String>> scheduleRaw) {
    scheduleRaw.forEach((key, value) => dayToSubjects[key] = Subjects(value));
  }
  Map<String, Subjects> dayToSubjects = {};
}

class ScheduleData {
  ScheduleData() {
    groupToSchedule = {};
    dataRaw.forEach((key, value) => groupToSchedule[key] = Schedule(value));
  }

  Map<String, Schedule> groupToSchedule = {};

  List<String> getGroupsNames() {
    return groupToSchedule.keys.toList();
  }

  Schedule getScheduleForGroup(String? groupName) {
    return groupToSchedule[groupName]!;
  }

  String getDayName(int dayIndex) {
    switch (dayIndex) {
      case 0:
        return "Понеділок";
      case 1:
        return "Вівторок";
      case 2:
        return "Середа";
      case 3:
        return "Четвер";
      case 4:
        return "П'ятниця";
      default:
    }
    return '';
  }
}

Map<String, Map<String, Map<int, String>>> dataRaw = {
  "KБ-41": {
    "Понеділок": {
      4: 'Технології розслідування інцидентів інформаційної безпеки',
      5: 'Безпека програмного забезпечення',
    },
    "Вівторок": {
      3: 'Основи охорони праці та безпека життєдіяльності',
      4: 'Контрольно-вимірювальна апаратура інформаційної безпеки',
      6: 'Системи охорони державної таємниці',
      7: 'Організаційне забезпечення технічного захисту інформації'
    },
    "Середа": {
      1: 'Безпека програмного забезпечення',
      2: 'Безпека програмного забезпечення',
      7: 'Системи автентифікації і управління доступом'
    },
    "Четвер": {
      1: 'Системи виявлення вторгнень',
      3: 'Мікропроцесори в системах технічного захисту інформації'
    },
    "П'ятниця": {
      1: 'Мікропроцесори в системах технічного захисту інформації',
    },
  },
  "KБ-42": {
    "Понеділок": {
      4: 'Технології розслідування інцидентів інформаційної безпеки',
      5: 'Безпека програмного забезпечення'
    },
    "Вівторок": {
      3: 'Основи охорони праці та безпека життєдіяльності',
      4: 'Організаційне забезпечення технічного захисту інформації',
      6: 'Контрольно-вимірювальна апаратура інформаційної безпеки',
      7: 'Мікропроцесори в системах технічного захисту інформації'
    },
    "Середа": {
      1: 'Контрольно-вимірювальна апаратура інформаційної безпеки',
      2: 'Мікропроцесори в системах технічного захисту інформації',
      3: 'Технології розслідування інцидентів інформаційної безпеки',
      4: 'Технології розслідування інцидентів інформаційної безпеки',
    },
    "Четвер": {
      2: 'Мікропроцесори в системах технічного захисту інформації',
    },
    "П'ятниця": {
      1: 'Мікропроцесори в системах технічного захисту інформації',
    },
  },
  "KБ-43": {
    "Понеділок": {
      2: 'Архітектура спеціалізованих комп`ютерних систем',
      3: 'Діагностика комп`ютерних засобів'
    },
    "Вівторок": {
      1: 'Комп`ютерні засоби опрацювання сигналів',
      4: 'Технології проектування комп`ютерних систем',
      6: 'Проектування комп`ютерних засобів обробки сигналів і зображень'
    },
    "Середа": {
      1: 'Технології проектування комп`ютерних систем',
      2: 'Архітектура спеціалізованих комп`ютерних систем',
      3: 'Захист інформації в комп`ютерних системах'
    },
    "Четвер": {
      4: 'Технології проектування комп`ютерних систем',
      5: 'Архітектура спеціалізованих комп`ютерних систем',
      6: 'Проектування комп`ютерних засобів обробки сигналів і зображень'
    },
    "П'ятниця": {
      2: 'Діагностика комп`ютерних засобів',
      3: 'Комп`ютерні засоби опрацювання сигналів',
      4: 'Захист інформації в комп`ютерних системах'
    },
  },
};