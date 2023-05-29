import 'package:components/components.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:schools_app/src/domain/entities/school_option.dart';
import 'package:schools_app/src/presentation/blocs/add_school_bloc.dart';
import 'package:schools_app/src/presentation/blocs/add_school_state.dart';

class AddSchoolPopup extends StatefulWidget {
  const AddSchoolPopup({
    required this.bloc,
    this.isDismissible = true,
    Key? key,
  }) : super(key: key);

  final bool isDismissible;
  final AddSchoolBloc bloc;

  @override
  State<AddSchoolPopup> createState() => _AddSchoolPopupState();
}

class _AddSchoolPopupState extends State<AddSchoolPopup> {
  final _formKey = GlobalKey<FormState>();
  final _schoolController = TextEditingController();
  late final AddSchoolBloc _bloc;
  @override
  void initState() {
    super.initState();
    _schoolController.text = widget.bloc.state.data?.newSchoolName ?? '';
    _bloc = widget.bloc;
  }

  @override
  void dispose() {
    _schoolController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopupLayout(
      maxWidth: 480,
      showCloseButton: false,
      shouldAbsorb: false,
      shouldPop: widget.isDismissible,
      builder: (context, isLoading, popup) {
        return BlocProvider.value(
          value: _bloc,
          child:
              BlocBuilder<AddSchoolBloc, AsyncSnapshot<AddSchoolState>>(builder: (context, snap) {
            return snap.when(
              data: (state) {
                if (state.newSchoolName == null && _schoolController.text.isNotEmpty) {
                  _schoolController.clear();
                }
                return Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: TText(
                          'Select Your School',
                          style: TTextStyle.headline5(),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8, left: 3),
                        child: TText(
                          'Region',
                          style: TTextStyle.mediumS(),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: FormField<String?>(
                              builder: (v) => TDropdown<String>(
                                items: state.regionsMap.entries
                                    .map(
                                      (e) => TDropdownItem(
                                        value: e.key,
                                        child: Text(e.value.title),
                                      ),
                                    )
                                    .toList(),
                                value: state.regionId,
                                onChanged: _bloc.selectRegion,
                                hint: TText(
                                  'Select a region',
                                  style: TTextStyle.regularM(color: TColors.black.shade300),
                                ),
                                minHeight: 50,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              validator: (_) => state.regionId == null ? 'Select a region' : null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8, left: 3),
                        child: TText(
                          'School',
                          style: TTextStyle.mediumS(),
                        ),
                      ),
                      TypeAheadFormField<SchoolOption?>(
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: const InputDecoration(hintText: 'Awesome High School'),
                          onChanged: _bloc.onSchoolFieldTextChanged,
                          enabled: state.regionId != null,
                          controller: _schoolController,
                        ),
                        validator: (_) =>
                            state.schoolId != null || _schoolController.text.isNotEmpty
                                ? null
                                : 'School is required',
                        onSuggestionSelected: (v) {
                          if (v != null) {
                            _bloc.selectSchool(v.id, _schoolController.text = v.name);
                          }
                        },
                        loadingBuilder: (_) => const SizedBox(
                          height: 350,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        itemBuilder: (_, option) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                          child: TText(
                            option?.name ?? 'n/a',
                            style: const TTextStyle.buttonM(color: TColors.black),
                          ),
                        ),
                        suggestionsCallback: _bloc.searchSchools,
                        keepSuggestionsOnLoading: false,
                        hideOnEmpty: true,
                        minCharsForSuggestions: 2,
                      ),
                      const SizedBox(height: 24),
                      TButton(
                        style: TButtonStyle.primary(),
                        loading: isLoading,
                        onPressed:
                            state.regionId != null && (state.newSchoolName?.isNotEmpty ?? false)
                                ? () async {
                                    if (_formKey.currentState?.validate() ?? false) {
                                      final res = await popup.execute(
                                        _bloc.createSchool,
                                        false,
                                        false,
                                      );
                                      if (res) {
                                        if (mounted) Navigator.pop(context, true);
                                      } else {
                                        // TODO: Some sort of error indication that creating a school failed for some reason
                                      }
                                    }
                                  }
                                : null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TText(
                              'Continue',
                              style: TTextStyle.boldM(
                                color: TColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              loading: () => const SizedBox(
                height: 175,
                width: 480,
                child: DefaultCircularProgressIndicator(color: TColors.primary),
              ),
              err: (_, __) => empty,
            );
          }),
        );
      },
    );
  }
}
