import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'donate_page_model.dart';
export 'donate_page_model.dart';

class DonatePageWidget extends StatefulWidget {
  const DonatePageWidget({
    super.key,
    this.parametro1d,
    this.parameter2d,
    this.parameter3d,
    this.parametro4d,
  });

  final List<String>? parametro1d;
  final DocumentReference? parameter2d;
  final int? parameter3d;
  final List<String>? parametro4d;

  @override
  State<DonatePageWidget> createState() => _DonatePageWidgetState();
}

class _DonatePageWidgetState extends State<DonatePageWidget> {
  late DonatePageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonatePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.parameter3d != 1,
      child: Builder(
        builder: (context) {
          final pages = widget.parametro4d?.toList() ?? [];
          if (pages.isEmpty) {
            return Image.asset(
              '',
            );
          }

          return SizedBox(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 430.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: PageView.builder(
                    controller: _model.pageViewController ??= PageController(
                        initialPage: max(0, min(0, pages.length - 1))),
                    scrollDirection: Axis.horizontal,
                    itemCount: pages.length,
                    itemBuilder: (context, pagesIndex) {
                      final pagesItem = pages[pagesIndex];
                      return Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            pagesItem,
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: _model.pageViewController ??= PageController(
                          initialPage: max(0, min(0, pages.length - 1))),
                      count: pages.length,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        await _model.pageViewController!.animateToPage(
                          i,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                        safeSetState(() {});
                      },
                      effect: const smooth_page_indicator.SlideEffect(
                        spacing: 4.0,
                        radius: 16.0,
                        dotWidth: 10.0,
                        dotHeight: 10.0,
                        dotColor: Color(0xF5D2D2D2),
                        activeDotColor: Color(0xFF074F72),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
