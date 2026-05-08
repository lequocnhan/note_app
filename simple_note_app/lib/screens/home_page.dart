import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';
import '../widgets/note_card.dart';
import 'note_editor_screen.dart';

class HomePage extends StatefulWidget { // Chuyển sang StatefulWidget để dùng initState nếu cần
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Tự động load danh sách ghi chú khi mở app [cite: 389]
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<NoteProvider>(context, listen: false).loadNotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildFAB(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text(
        'Ghi chú của tôi', // Đổi sang tiếng Việt cho thân thiện nè
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26, letterSpacing: -0.5),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.search_rounded),
          onPressed: () { /* Tính năng tìm kiếm nếu muốn làm thêm */ },
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Consumer<NoteProvider>(
      builder: (context, provider, child) {
        if (provider.notes.isEmpty) {
          return _buildEmptyState();
        }
        return RefreshIndicator( // Thêm tính năng kéo để làm mới danh sách
          onRefresh: () => provider.loadNotes(),
          child: _buildNoteList(provider),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.edit_note_rounded, size: 60, color: Colors.grey[400]),
          ),
          const SizedBox(height: 20),
          Text(
            'Chưa có ghi chú nào',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoteList(NoteProvider provider) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: provider.notes.length,
      itemBuilder: (context, index) {
        final note = provider.notes[index];
        
        // Thêm tính năng Vuốt để xóa (Dismissible) 
        return Dismissible(
          key: Key(note.id.toString()),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.delete_outline, color: Colors.white),
          ),
          onDismissed: (direction) {
            // Gọi hàm xóa từ provider [cite: 370]
            // provider.deleteNote(note.id!); 
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Đã xóa "${note.title}"')),
            );
          },
          child: NoteCard(
            note: note,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NoteEditorScreen(note: note),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFAB(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NoteEditorScreen()),
      ),
      label: const Text('Thêm mới', style: TextStyle(fontWeight: FontWeight.bold)),
      icon: const Icon(Icons.add_rounded),
      backgroundColor: Colors.blueAccent, // Đổi sang màu xanh cho nổi bật trên nền xám
      foregroundColor: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }
}