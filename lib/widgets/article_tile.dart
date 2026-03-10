import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/main.dart';
import 'package:news/models/article.dart';

class ArticleGridCard extends StatelessWidget {
  const ArticleGridCard({
    super.key,
    required this.article,
    required this.onTap,
  });
  final Article article;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Ink(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: MainApp.nightPurple.withValues(alpha: 0.1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 92,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MainApp.nightPurple.withValues(alpha: 0.1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 92,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MainApp.nightPurple.withValues(alpha: 0.1),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.article_rounded,
                      color: MainApp.nightPurple,
                      size: 35,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: MainApp.lightPurple,
                            borderRadius: BorderRadius.circular(999),
                            border: Border.all(
                              color: MainApp.nightPurple.withValues(
                                alpha: 0.15,
                              ),
                            ),
                          ),
                          child: Text(
                            article.title,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800,
                              color: MainApp.nightPurple,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        article.time,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: MainApp.nightPurple.withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
