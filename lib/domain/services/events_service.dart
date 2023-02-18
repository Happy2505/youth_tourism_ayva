import 'package:youth_tourism_ayva/domain/api_client/events_client.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';

class EventsService {
  final _eventsClient = EventsClient();


  Future<AllEvents> getEvents() async => _eventsClient.getEvents();
  Future<EventID> getEventID(int ID) async => _eventsClient.getEventID(ID: ID);

}
