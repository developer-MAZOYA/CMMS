<?php
// Define the folder path
$folderPath = '../document/uploads';

// Define the zip file name
$zipFileName = 'folder_name.zip';

// Create a zip archive
$zip = new ZipArchive();
if ($zip->open($zipFileName, ZipArchive::CREATE | ZipArchive::OVERWRITE) === TRUE) {
    // Add all files and subdirectories to the zip archive
    $files = new RecursiveIteratorIterator(
        new RecursiveDirectoryIterator($folderPath),
        RecursiveIteratorIterator::LEAVES_ONLY
    );

    foreach ($files as $name => $file) {
        if (!$file->isDir()) {
            // Get real and relative path for current file
            $filePath = $file->getRealPath();
            $relativePath = substr($filePath, strlen($folderPath) + 1);

            // Add current file to zip
            $zip->addFile($filePath, $relativePath);
        }
    }

    // Close and save the zip archive
    $zip->close();

    // Send the file to the browser as a download
    header('Content-Type: application/zip');
    header('Content-disposition: attachment; filename=' . $zipFileName);
    header('Content-Length: ' . filesize($zipFileName));
    readfile($zipFileName);

    // Delete the temporary zip file
    unlink($zipFileName);
} else {
    echo 'Failed to create zip archive';
}
?>
