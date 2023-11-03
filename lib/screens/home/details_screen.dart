import 'package:flutter/material.dart';
import 'package:news_app/models/newsResponse.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = 'details';

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Articles;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18))),
        title: Text(AppLocalizations.of(context)!.newsTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(article.urlToImage ?? "",
                  fit: BoxFit.fill, height: 230),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 2, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.source?.name ?? "",
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    article.title ?? "",
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.description ?? "",
                    maxLines: 14,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        article.author ?? "",
                        maxLines: 6,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                      Text(article.publishedAt?.substring(0, 10) ?? ""),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      onTap: () => _launchUrl(article.url ?? ""),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.viewFullArticle,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            size: 20,
                          )
                        ],
                      ))
                  // TextButton.icon(onPressed: () {
                  //
                  // },label: Text("View Full Article"), icon: Icon(Icons.arrow_left_outlined,
                  // color: Colors.grey[700],), )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    var uri = Uri.parse(url);
    //  if(
    await launchUrl(uri);
    //){
    // throw Exception("could not launch");
  }

// }
}
