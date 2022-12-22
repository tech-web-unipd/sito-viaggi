<?php
class Image
{
    private string $path;
    private string $alt;

    public function __construct(string $path, string $alt)
    {
        $this->path = $path;
        $this->alt = $alt;
    }

    /**
     * @return string The HTML image with src and alt attributes
     */
    public function build(): string
    {
        return "<img src=\"$this->path\" alt=\"$this->alt\">";
    }
}