module soil;

extern (C) {
    enum {
        SOIL_LOAD_AUTO = 0,
        SOIL_LOAD_L = 1,
        SOIL_LOAD_LA = 2,
        SOIL_LOAD_RGB = 3,
        SOIL_LOAD_RGBA = 4
    }

    enum {
        SOIL_CREATE_NEW_ID = 0
    }

    enum {
        SOIL_FLAG_POWER_OF_TWO = 1,
        SOIL_FLAG_MIPMAPS = 2,
        SOIL_FLAG_TEXTURE_REPEATS = 4,
        SOIL_FLAG_MULTIPLY_ALPHA = 8,
        SOIL_FLAG_INVERT_Y = 16,
        SOIL_FLAG_COMPRESS_TO_DXT = 32,
        SOIL_FLAG_DDS_LOAD_DIRECT = 64,
        SOIL_FLAG_NTSC_SAFE_RGB = 128,
        SOIL_FLAG_CoCg_Y = 256,
        SOIL_FLAG_TEXTURE_RECTANGLE = 512
    }

    enum {
        SOIL_SAVE_TYPE_TGA = 0,
        SOIL_SAVE_TYPE_BMP = 1,
        SOIL_SAVE_TYPE_DDS = 2
    }

    const char* SOIL_DDS_CUBEMAP_FACE_ORDER = "EWUDNS";

    enum {
        SOIL_HDR_RGBE = 0,
        SOIL_HDR_RGBdivA = 1,
        SOIL_HDR_RGBdivA2 = 2
    }

    uint SOIL_load_OGL_texture(
        const char *filename,
        int force_channels,
        uint reuse_texture_ID,
        uint flags
    );

    uint SOIL_load_OGL_single_cubemap(
        const char *filename,
        const char[6] face_order,
        int force_channels,
        uint reuse_texture_ID,
        uint flags
    );

    uint SOIL_load_OGL_HDR_texture(
        const char *filename,
        int fake_HDR_format,
        int rescale_to_max,
        uint reuse_texture_ID,
        uint flags
    );

    uint SOIL_load_OGL_texture_from_memory(
        const const(ubyte)* buffer,
        int buffer_length,
        int force_channels,
        uint reuse_texture_ID,
        uint flags
    );

    uint SOIL_load_OGL_cubemap_from_memory(
        const const(ubyte)* x_pos_buffer,
        int x_pos_buffer_length,
        const const(ubyte)* x_neg_buffer,
        int x_neg_buffer_length,
        const const(ubyte)* y_pos_buffer,
        int y_pos_buffer_length,
        const const(ubyte)* y_neg_buffer,
        int y_neg_buffer_length,
        const const(ubyte)* z_pos_buffer,
        int z_pos_buffer_length,
        const const(ubyte)* z_neg_buffer,
        int z_neg_buffer_length,
        int force_channels,
        uint reuse_texture_ID,
        uint flags
    );

    uint SOIL_load_OGL_single_cubemap_from_memory(
        const const(ubyte)* buffer,
        int buffer_length,
        const char[6] face_order,
        int force_channels,
        uint reuse_texture_ID,
        uint flags
    );

    uint SOIL_create_OGL_texture(
        const const(ubyte)* data,
        int width, int height, int channels,
        uint reuse_texture_ID,
        uint flags
    );

    uint SOIL_create_OGL_single_cubemap(
        const const(ubyte)* data,
        int width, int height, int channels,
        const char[6] face_order,
        uint reuse_texture_ID,
        uint flags
    );

    int SOIL_save_screenshot(
        const char *filename,
        int image_type,
        int x, int y,
        int width, int height
    );

    ubyte* SOIL_load_image(
        const char *filename,
        int *width, int *height, int *channels,
        int force_channels
    );

    ubyte* SOIL_load_image_from_memory(
        const const(ubyte)* buffer,
        int buffer_length,
        int *width, int *height, int *channels,
        int force_channels
    );

    int SOIL_save_image(
        const char *filename,
        int image_type,
        int width, int height, int channels,
        const const(ubyte)* data
    );

    void SOIL_free_image_data(
        ubyte *img_data
    );

    const(char)* SOIL_last_result();
}
