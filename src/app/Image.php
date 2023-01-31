<?php
namespace components;

require_once "global.php";

class Image
{
    private string $path;
    private string $alt;
    public bool $is_cover;

    public function __construct(string $path, string $alt, bool $is_cover = false)
    {
        $this->path = $path;
        $this->alt = $alt;
        $this->is_cover = $is_cover;
    }

    /**
     * @return string The HTML image with src and alt attributes
     */
    public function build(): string
    {
        $path = BASE.substr($this->path, 2);
        return "<img src=\"$path\" alt=\"$this->alt\">";
    }

    public function getPath(): string
    {
        return $this->path;
    }

    public function getAlt(): string
    {
        return $this->alt;
    }
}