import 'package:flutter/material.dart';
import 'package:test_app_flutter2/pages/home/components/quick_link_card.dart';

class QuickLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickLinkCard(
              name: "Send Money",
              svgPath: "assets/svg/money-send-svgrepo-com.svg",
            ),
            QuickLinkCard(
              name: "CenterMobile Loans",
              svgPath: "assets/svg/bank-card-2-svgrepo-com.svg",
            ),
            QuickLinkCard(
              name: "Bill Payments",
              svgPath: "assets/svg/receipt-svgrepo-com.svg",
            ),
          ],
        ),
        SizedBox(height: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickLinkCard(
              name: "Airtime and Data Bundles",
              svgPath: "assets/svg/customer-support.svg",
            ),
            QuickLinkCard(
              name: "School fees",
              svgPath: "assets/svg/settings.svg",
            ),
            QuickLinkCard(
              name: "Agent Withdrawal",
              svgPath: "assets/svg/security.svg",
            ),
          ],
        ),
        SizedBox(height: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickLinkCard(
              name: "Cente Xpress",
              svgPath: "assets/svg/notifications.svg",
            ),
            QuickLinkCard(
              name: "Payments and Collections",
              svgPath: "assets/svg/question.svg",
            ),
            QuickLinkCard(
              name: "Card Services",
              svgPath: "assets/svg/info-circle.svg",
            ),
          ],
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickLinkCard(
              name: "My Transactions",
              svgPath: "assets/svg/user-profile-circle.svg",
            ),
            QuickLinkCard(name: "Requests", svgPath: "assets/svg/history.svg"),
            QuickLinkCard(
              name: "Account Settings",
              svgPath: "assets/svg/account-settings.svg",
            ),
          ],
        ),
      ],
    );
  }
}
