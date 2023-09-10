import 'package:flutter/material.dart';
import 'package:flutter_country_state/flutter_country_state.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapao_app/networking/fetch.dart';
import 'package:mapao_app/utilities/utils.dart';
import 'package:mapao_app/widgets/event_item.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';

class EventScreen extends HookWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedState = useState<String>("");
    final selectedCountry = useState<String>("");

    final events = useQuery(
      ["eventLists"],
      () =>
          getEventList(selectedState.value == "" ? "all" : selectedState.value),
      refetchOnMount: RefetchOnMount.always,
    );

    //TODO: useEffect is use to trigger the changes when useState is upsdated
    useEffect(() {
      //refetch is in useQuery to fetch again
      events.refetch();

      return null;
    }, [selectedState.value]);
    Widget eventWidget;

    if (events.isFetching) {
      eventWidget = const Center(
        child: CircularProgressIndicator(),
      );
    } else if (events.isError) {
      eventWidget = Center(child: Text(events.error.toString()));
    } else if (events.data != null) {
      // Use events.data to access the fetched data and display it
      eventWidget = Expanded(
        child: RefreshIndicator(
          onRefresh: () async {
            events.refetch();
          },
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: events.data!.length,
            itemBuilder: (context, index) {
              // Replace with your EventItem widget and data mapping
              return EventItem(
                event: events.data![index],
              );
            },
          ),
        ),
      );
    } else {
      // Handle other cases, e.g., empty data
      eventWidget = const Center(child: Text("No events available."));
    }

    return Container(
      padding: EdgeInsets.only(
        top: getAdaptiveSize(context, 10),
        left: getAdaptiveSize(context, 10),
        right: getAdaptiveSize(context, 10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3.0,
          ),

          const Row(
            children: [
              Text("Events",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Divider(
                  height: 5,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // Select country and state
          Row(
            children: [
              //Country list
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    isDismissible: true,
                    builder: (context) => SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ShowMyDialog(
                        searchHint: 'Search for a country',
                        substringBackground: Colors.black,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        countryHeaderStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        searchStyle: const TextStyle(color: Colors.black),
                        subStringStyle: const TextStyle(color: Colors.white),
                        selectedCountryBackgroundColor: Colors.pink,
                        notSelectedCountryBackgroundColor: Colors.white,
                        onSelectCountry: () {
                          selectedCountry.value = Variables.country;
                        },
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.locationDot,
                        size: getAdaptiveSize(context, 13.0),
                        color: Colors.blue),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      selectedCountry.value == ""
                          ? "select country"
                          : selectedCountry.value,
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              //state list
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: false,
                    context: context,
                    isDismissible: true,
                    builder: (context) => SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: StateDialog(
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        stateHeaderStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        subStringStyle: const TextStyle(color: Colors.white),
                        substringBackground: Colors.black,
                        selectedStateBackgroundColor: Colors.orange,
                        notSelectedStateBackgroundColor: Colors.white,
                        onSelectedState: () {
                          selectedState.value = Variables.state;
                        },
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.locationDot,
                        size: getAdaptiveSize(context, 13.0),
                        color: Colors.blue),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      selectedState.value == ""
                          ? "select state"
                          : selectedState.value,
                      style: TextStyle(color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    //Clear Country and State
                    IconButton(
                        onPressed: () {
                          selectedCountry.value = "";
                          selectedState.value = "";
                        },
                        icon: Icon(
                          FontAwesomeIcons.x,
                          size: getAdaptiveSize(context, 10),
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),

          Center(
            child: SizedBox(
              height: 1,
              width: getAdaptiveSize(context, 100),
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          // ... Your other UI elements ...

          // List of Events
          eventWidget,
        ],
      ),
    );
  }
}
