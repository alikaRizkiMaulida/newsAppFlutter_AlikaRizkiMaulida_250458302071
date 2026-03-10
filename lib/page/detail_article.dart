import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/article.dart';
import 'package:news/main.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Artikel ${article.title}",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              icon: const Icon(Icons.bookmark_add_rounded),
              tooltip: 'Bookmark',
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20, 12, 20, 28),
          children: [
            Container(
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: [
                    MainApp.nightPurple,
                    MainApp.nightPurple.withValues(alpha: 0.1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: MainApp.lightPurple.withValues(alpha: 0.18),
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(
                        color: MainApp.lightPurple.withValues(alpha: 0.25),
                      ),
                    ),
                    child: Text(
                      article.category,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              article.title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: MainApp.nightPurple,
                height: 1.15,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.source_rounded,
                  size: 14,
                  color: MainApp.nightPurple,
                ),
                SizedBox(width: 4),
                Text(
                  article.source,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: MainApp.nightPurple.withValues(alpha: 0.75),
                  ),
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.verified_rounded,
                  size: 18,
                  color: MainApp.nightPurple.withValues(alpha: 0.7),
                ),
                SizedBox(height: 6),
                Expanded(
                  child: Text(
                    '${article.source} - ${article.time}',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: MainApp.nightPurple.withValues(alpha: 0.7),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
