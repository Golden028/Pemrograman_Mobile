// filter_carousel.dart
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'filter_selector.dart';

@immutable
class PhotoFilterCarousel extends StatefulWidget {
  // Menerima bytes gambar sebagai Uint8List
  const PhotoFilterCarousel({super.key, required this.imageBytes});
  
  final Uint8List imageBytes;

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  // Daftar filter warna
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terapkan Filter'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              // Simpan atau logika ekspor bisa ditambahkan di sini
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Filter Diterapkan dan Disimpan! (Logika Simpan Diabaikan)')),
              );
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Gambar yang diambil dengan efek filter warna
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          // Carousel filter di bagian bawah layar
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder<Color>(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        // Tampilkan gambar dari memory sehingga kompatibel di web & mobile
        return Image.memory(
          widget.imageBytes,
          color: color.withOpacity(0.5),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}
