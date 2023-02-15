import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class QAutoComplete extends StatefulWidget {
  final String label;
  final String? hint;
  final List<Map<String, dynamic>> items;
  final String? Function(String? item)? validator;
  final Function(dynamic value, String? label) onChanged;

  const QAutoComplete({
    Key? key,
    required this.label,
    required this.items,
    this.validator,
    this.hint,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<QAutoComplete> createState() => _QAutoCompleteState();
}

class _QAutoCompleteState extends State<QAutoComplete> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    for (var item in widget.items) {
      items.add(Map.from(item));
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormField(
          initialValue: false,
          enabled: true,
          builder: (field) {
            return Autocomplete<Map>(
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted) {
                return TextFormField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onFieldSubmitted: (text) => onFieldSubmitted(),
                  validator: widget.validator,
                  decoration: InputDecoration(
                    labelText: widget.label,
                    errorText: field.errorText,
                    suffixIcon: const Icon(Icons.search),
                    helperText: widget.hint,
                  ),
                );
              },
              initialValue: TextEditingValue(
                text: items.first["label"],
              ),
              onSelected: (Map map) {
                String? label = map["label"];
                dynamic value = map["value"];
                widget.onChanged(value, label);
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<Map>.empty();
                }
                return items.where((Map option) {
                  return option["label"]
                      .toString()
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              displayStringForOption: (option) {
                return option["label"];
              },
              optionsViewBuilder: (context, onSelected, options) => Align(
                alignment: Alignment.topLeft,
                child: Material(
                  color: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(4.0),
                    ),
                    child: Container(
                      width: constraints.biggest.width,
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Wrap(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(globalContext)
                                  .scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              border: Border.all(
                                width: 1.0,
                                color: Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.4),
                              ),
                            ),
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: options.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                bool selected =
                                    AutocompleteHighlightedOption.of(context) ==
                                        index;
                                Map option = options.elementAt(index);

                                return InkWell(
                                  onTap: () => onSelected(option),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: selected
                                          ? Theme.of(context).focusColor
                                          : null,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          index == 0 ? 12 : 0,
                                        ),
                                        topRight: Radius.circular(
                                          index == 0 ? 12 : 0,
                                        ),
                                        bottomLeft: Radius.circular(
                                          index == options.length - 1
                                              ? 12
                                              : 0.0,
                                        ),
                                        bottomRight: Radius.circular(
                                          index == options.length - 1
                                              ? 12
                                              : 0.0,
                                        ),
                                      ),
                                    ),
                                    child: ListTile(
                                      leading: option["photo"] == null
                                          ? null
                                          : CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                option["photo"],
                                              ),
                                            ),
                                      title: Text("${option["label"]}"),
                                      subtitle: Text("${option["info"]}"),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          });
    });
  }
}
