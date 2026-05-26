# Volcano Plot Generator

**A simple, browser-based tool for biologists to create publication-ready volcano plots from CSV data.**

No installation required. No coding needed. Just open and use!

## ✨ Features

- 📊 **Instant Visualization** - Upload CSV and see your plot immediately
- 🎨 **Customizable** - Adjust thresholds, colors, point sizes, and labels
- 📥 **Export Ready** - Download high-resolution PNG (1000×700px) for publications
- 🏷️ **Auto-Labeling** - Automatically labels top significant genes
- 📈 **Statistics** - Shows counts of up/down/not-significant genes
- 💾 **Data Export** - Export annotated data with classifications as CSV
- 🌐 **100% Client-Side** - Your data never leaves your computer
- 🚀 **No Installation** - Works directly in your web browser

## 🚀 Quick Start

### Option 1: Direct Use (Easiest!)

1. **Download** `volcano_plot_generator.html` from this repository
2. **Double-click** the file to open it in your browser
3. **Upload** your CSV data
4. **Done!** Generate and export your plot

### Option 2: Clone Repository

```bash
git clone https://github.com/YOUR-USERNAME/volcano-plot-generator.git
cd volcano-plot-generator
# Open volcano_plot_generator.html in your browser
```

### Option 3: Use GitHub Pages

Visit: `https://YOUR-USERNAME.github.io/volcano-plot-generator/`

## 📋 CSV Format

Your CSV file must contain three columns:
- **Gene name/ID**
- **Log2 Fold Change**
- **P-value**

### Example CSV:

```csv
Gene,Log2FoldChange,Pvalue
BRCA1,2.5,0.001
TP53,-1.8,0.005
EGFR,3.2,0.0001
MYC,-2.1,0.002
KRAS,1.5,0.02
PTEN,-1.2,0.03
```

**Column names are flexible!** The tool recognizes variations like:
- Gene names: `gene`, `Gene`, `name`, `ID`, `gene_name`
- Fold change: `Log2FoldChange`, `log2FC`, `FC`, `fold_change`
- P-value: `Pvalue`, `p.value`, `p-value`, `pval`

## 🎯 How to Use

### 1. Upload Your Data
- Click **"Choose CSV File"** button
- Select your CSV file with gene expression data

### 2. Customize (Optional)
Click **"Settings"** to adjust:
- **Fold Change Threshold** (default: 1.0)
- **P-value Threshold** (default: 0.05)
- **Point Size** (2-10 pixels)
- **Colors** (up-regulated, down-regulated, not significant)
- **Gene Labels** (show/hide, number of top genes)
- **Plot Title** and axis labels

### 3. Export Your Plot
- **Export PNG** - Download high-resolution image for publications
- **Export CSV** - Download data with gene classifications

## 🔬 Understanding Your Plot

### Gene Classification:
- **Red dots** = Up-regulated (FC > threshold AND p < threshold)
- **Blue dots** = Down-regulated (FC < -threshold AND p < threshold)
- **Gray dots** = Not significant

### Threshold Lines:
- **Horizontal line** = P-value significance threshold
- **Vertical lines** = Fold change thresholds (±)

### Legend:
Shows the count of genes in each category

## 📊 Example Data

Sample CSV files are included in the `/examples` folder:
- `sample_data_small.csv` - 50 genes
- `sample_data_medium.csv` - 500 genes
- `sample_data_large.csv` - 5000 genes

## 🛠️ Technical Details

- **Technology**: Pure HTML + JavaScript + React
- **Dependencies**: React 18, Babel (loaded via CDN)
- **Canvas Rendering**: High-quality 2D canvas graphics
- **Browser Support**: Chrome, Firefox, Safari, Edge (latest versions)
- **File Size**: ~40KB (single HTML file)
- **Privacy**: 100% client-side processing, no data uploaded to servers

## 📱 System Requirements

- **Computer**: Windows, Mac, Linux, or Chromebook
- **Browser**: Any modern web browser (Chrome recommended)
- **Internet**: Only needed for initial download (runs offline after)
- **No installation required!**

## 🎓 For Researchers

Perfect for:
- RNA-seq differential expression analysis
- Proteomics studies
- Metabolomics data visualization
- Any high-throughput comparative analysis

### Publication Guidelines:
- Plots are generated at 1000×700px resolution
- Suitable for journal submissions
- Customize colors to match journal requirements
- Export at 300 DPI for print quality

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

Built with ❤️ for the research community to make data visualization accessible to everyone.

## 📧 Contact

For questions, suggestions, or issues:
- Open an issue on GitHub
- Email: spp140202@gmail.com

## ⭐ Star This Project!

If you find this tool helpful, please consider giving it a star on GitHub! It helps others discover the tool.

---

**Made with 🧬 for biologists, by someone who understands your data visualization struggles!**
