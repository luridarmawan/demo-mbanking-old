import '../../viewmodels/mbx_profile_vm.dart';
import '../../widgets/all_widgets.dart';
import '../mbx_home_page/mbx_launcher_cell.dart';
import 'mbx_lock_controller.dart';

class MbxLockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MbxLockController>(
        init: MbxLockController(),
        builder: (controller) => ScreenX(
              lightStatusBar: true,
              topPadding: false,
              bottomPadding: false,
              bodyView: ContainerX(
                  backgroundColor: ColorX.theme,
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ContainerX(
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                                child: ContainerX(
                                    backgroundColor: ColorX.white,
                                    padding: EdgeInsets.all(12.0),
                                    cornerRadius: 12.0,
                                    child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      alignment: WrapAlignment.center,
                                      children: [
                                        ContainerX(
                                            backgroundColor: ColorX.white,
                                            width: 110.0,
                                            height: 110.0,
                                            cornerRadius: 55.0,
                                            child: Center(
                                                child: ImageX(
                                              faIcon: MbxProfileVM
                                                      .profile.photo.isEmpty
                                                  ? FontAwesomeIcons.user
                                                  : null,
                                              color: MbxProfileVM
                                                      .profile.photo.isEmpty
                                                  ? ColorX.gray
                                                  : null,
                                              url: MbxProfileVM.profile.photo,
                                              width: MbxProfileVM
                                                      .profile.photo.isEmpty
                                                  ? 50.0
                                                  : 100.0,
                                              height: 100.0,
                                              cornerRadius: 50.0,
                                            ))),
                                        ContainerX(height: 8.0),
                                        TextX(
                                          MbxProfileVM.profile.name.isEmpty
                                              ? '-'
                                              : MbxProfileVM.profile.name,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700,
                                          color: ColorX.black,
                                        ),
                                        ContainerX(height: 2.0),
                                        TextX(
                                          MbxProfileVM.profile.email.isEmpty
                                              ? '-'
                                              : MbxProfileVM.profile.email,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                          color: ColorX.black,
                                        ),
                                        ContainerX(height: 12.0),
                                        ButtonX(
                                          backgroundColor: ColorX.theme,
                                          title: 'Masuk',
                                          onClicked: () {
                                            controller.btnLoginClicked();
                                          },
                                        ),
                                        ContainerX(height: 12.0),
                                        ContainerX(
                                            height: 100.0,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                MbxLauncherCell(
                                                    color: ColorX.red,
                                                    faIcon:
                                                        FontAwesomeIcons.qrcode,
                                                    title: 'QRIS',
                                                    titleColor: ColorX.black),
                                                MbxLauncherCell(
                                                    color: ColorX.blue,
                                                    faIcon: FontAwesomeIcons
                                                        .sackDollar,
                                                    title: 'Tarik Tunai',
                                                    titleColor: ColorX.black),
                                                MbxLauncherCell(
                                                    color: ColorX.green,
                                                    faIcon: FontAwesomeIcons
                                                        .question,
                                                    title: 'Bantuan',
                                                    titleColor: ColorX.black),
                                              ],
                                            )),
                                      ],
                                    )))),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: TextX(
                          controller.version,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: ColorX.white,
                        ),
                      ),
                    ],
                  )),
            ));
  }
}
