export interface ScheduleEvents {
  toFrom: string[];
  hours: Hour[];
}

export interface Hour {
  position: string;
  events: Event[];
}

export interface Event {
  id: string;
  day: string;
  hour: string;
  subject: string;
  teacher: Teacher;
  classroom: string;
  grade: string;
}

export interface Teacher {
  name: string;
  color: string;
}

export interface CordenatesEvent {
  day: string;
  hour: string;
  created: boolean;
}
