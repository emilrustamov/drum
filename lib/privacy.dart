import 'package:drum/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppbar(context, "Privacy policy", Icons.arrow_back),
        body: Column(
          children: [
            Text(
              "This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You. We use Your Personal data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this Privacy Policy. Interpretation and Definitions Collecting and Using Your Personal Data Detailed Information on the Processing of Your Personal Data GDPR Privacy CCPA Privacy \"Do Not Track\" Policy as Required by California Online Privacy Protection Act (CalOPPA) Children's Privacy Your California Privacy Rights (California Business and Professions Code Section 22581) Links to Other Websites Changes to this Privacy Policy Contact Us Interpretation and Definitions Interpretation The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural. Definitions For th purposes of this Privacy Policy: You means the individual accessing or using the serivce, or the company, or other legal entity on behalf",
              style: TextStyle(fontSize: 18),
            )
          ],
        ));
  }
}
