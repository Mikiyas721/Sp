class Entity {
  final String id;

  Entity(this.id);
}

abstract class TimeStampedEntity {
  DateTime get createdAt;

  DateTime get updatedAt;
}
