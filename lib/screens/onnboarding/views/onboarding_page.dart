import 'package:werve/export.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();

  OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedPageIndex,
            itemCount: _controller.onboardingPages.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      _controller.onboardingPages[index].imageAsset,
                      height: 425,
                      width: 425,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        _controller.onboardingPages.length,
                        (index) => Obx(() {
                              return Container(
                                margin: const EdgeInsets.all(4),
                                width: 9,
                                height: 9,
                                decoration: BoxDecoration(
                                  color: _controller.selectedPageIndex.value ==
                                          index
                                      ? Colors.red
                                      : Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              );
                            })),
                  ),
                  const SizedBox(height: 70),
                  Text(_controller.onboardingPages[index].title,
                      style: const TextStyle(
                          fontSize: 32,
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto")),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Expanded(
                      child: Text(
                          _controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(74, 107, 176, 1),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Quicksand")),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(_controller.onboardingPages[index].proverb,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(0, 0, 0, 0.74),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Quicksand")),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonTheme(
                          minWidth: 108,
                          height: 56,
                          child: ElevatedButton(
                            child: const Text('SKIP'),
                            onPressed: _controller.forwardAction,
                            style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(74, 107, 176, 1),
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Roboto')),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
