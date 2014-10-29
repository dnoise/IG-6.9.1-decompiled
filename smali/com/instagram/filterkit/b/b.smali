.class public Lcom/instagram/filterkit/b/b;
.super Ljava/lang/Object;
.source "IgGLProgram.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/filterkit/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/instagram/filterkit/b/b;

    sput-object v0, Lcom/instagram/filterkit/b/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/instagram/filterkit/b/b;->b:I

    .line 60
    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    invoke-static {v0}, Lcom/instagram/filterkit/b/b;->a(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    .line 61
    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    invoke-static {v0}, Lcom/instagram/filterkit/b/b;->b(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->d:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    .line 64
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/instagram/filterkit/b/a;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/a;

    return-object v0
.end method

.method private static a(I)Ljava/util/Map;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 74
    new-array v11, v0, [I

    .line 75
    new-array v12, v0, [I

    .line 76
    new-array v3, v0, [I

    .line 77
    new-array v5, v0, [I

    .line 78
    new-array v7, v0, [I

    .line 80
    const v0, 0x8b86

    invoke-static {p0, v0, v11, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 81
    const v0, 0x8b87

    invoke-static {p0, v0, v12, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 85
    aget v0, v12, v4

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v4

    .line 87
    aget v0, v12, v4

    new-array v9, v0, [B

    .line 88
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move v1, v4

    .line 90
    :goto_0
    aget v0, v11, v4

    if-ge v1, v0, :cond_0

    .line 91
    aget v2, v12, v4

    move v0, p0

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 94
    new-instance v0, Ljava/lang/String;

    aget v2, v3, v4

    invoke-direct {v0, v9, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 95
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 97
    new-instance v6, Lcom/instagram/filterkit/b/f;

    aget v8, v5, v4

    aget v10, v7, v4

    invoke-direct {v6, v0, v2, v8, v10}, Lcom/instagram/filterkit/b/f;-><init>(Ljava/lang/String;III)V

    .line 98
    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v13
.end method

.method private static a(Lcom/instagram/filterkit/b/f;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized type of uniform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :sswitch_0
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 314
    :goto_0
    return-void

    .line 275
    :sswitch_1
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 279
    :sswitch_2
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 283
    :sswitch_3
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 290
    :sswitch_4
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    goto :goto_0

    .line 295
    :sswitch_5
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    goto :goto_0

    .line 300
    :sswitch_6
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    goto :goto_0

    .line 304
    :sswitch_7
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    goto :goto_0

    .line 307
    :sswitch_8
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 310
    :sswitch_9
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 313
    :sswitch_a
    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/filterkit/b/f;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x1404 -> :sswitch_4
        0x1406 -> :sswitch_0
        0x8b50 -> :sswitch_1
        0x8b51 -> :sswitch_2
        0x8b52 -> :sswitch_3
        0x8b53 -> :sswitch_5
        0x8b54 -> :sswitch_6
        0x8b55 -> :sswitch_7
        0x8b56 -> :sswitch_4
        0x8b57 -> :sswitch_5
        0x8b58 -> :sswitch_6
        0x8b59 -> :sswitch_7
        0x8b5a -> :sswitch_8
        0x8b5b -> :sswitch_9
        0x8b5c -> :sswitch_a
        0x8b5e -> :sswitch_4
        0x8b60 -> :sswitch_4
    .end sparse-switch
.end method

.method private static b(I)Ljava/util/Map;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 105
    new-array v11, v0, [I

    .line 106
    new-array v12, v0, [I

    .line 107
    new-array v3, v0, [I

    .line 108
    new-array v5, v0, [I

    .line 109
    new-array v7, v0, [I

    .line 111
    const v0, 0x8b89

    invoke-static {p0, v0, v11, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 112
    const v0, 0x8b8a

    invoke-static {p0, v0, v12, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 116
    aget v0, v12, v4

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v4

    .line 118
    aget v0, v12, v4

    new-array v9, v0, [B

    .line 119
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move v1, v4

    .line 121
    :goto_0
    aget v0, v11, v4

    if-ge v1, v0, :cond_0

    .line 122
    aget v2, v12, v4

    move v0, p0

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 125
    new-instance v0, Ljava/lang/String;

    aget v2, v3, v4

    invoke-direct {v0, v9, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 126
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 128
    new-instance v6, Lcom/instagram/filterkit/b/a;

    aget v8, v5, v4

    aget v10, v7, v4

    invoke-direct {v6, v0, v2, v8, v10}, Lcom/instagram/filterkit/b/a;-><init>(Ljava/lang/String;III)V

    .line 129
    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object v13
.end method

.method private c()V
    .locals 7

    .prologue
    const/16 v6, 0xde1

    .line 241
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/f;

    invoke-virtual {v1}, Lcom/instagram/filterkit/b/f;->b()I

    move-result v1

    const v4, 0x8b5e

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/f;

    invoke-virtual {v1}, Lcom/instagram/filterkit/b/f;->a()I

    move-result v1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 246
    const v1, 0x84c0

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 247
    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/d;

    invoke-static {v1}, Lcom/instagram/filterkit/b/d;->a(Lcom/instagram/filterkit/b/d;)I

    move-result v1

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 248
    const/16 v4, 0x2801

    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/b/d;

    invoke-static {v1}, Lcom/instagram/filterkit/b/d;->b(Lcom/instagram/filterkit/b/d;)Lcom/instagram/filterkit/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/filterkit/b/c;->a(Lcom/instagram/filterkit/b/c;)I

    move-result v1

    invoke-static {v6, v4, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 252
    const/16 v1, 0x2800

    iget-object v4, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/d;

    invoke-static {v0}, Lcom/instagram/filterkit/b/d;->b(Lcom/instagram/filterkit/b/d;)Lcom/instagram/filterkit/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/filterkit/b/c;->a(Lcom/instagram/filterkit/b/c;)I

    move-result v0

    invoke-static {v6, v1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_1
    move v2, v0

    .line 258
    goto/16 :goto_0

    .line 259
    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/f;

    .line 263
    invoke-static {v0}, Lcom/instagram/filterkit/b/b;->a(Lcom/instagram/filterkit/b/f;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 266
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    return v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    new-instance v1, Lcom/instagram/filterkit/b/d;

    sget-object v2, Lcom/instagram/filterkit/b/c;->b:Lcom/instagram/filterkit/b/c;

    invoke-direct {v1, p0, p2, v2}, Lcom/instagram/filterkit/b/d;-><init>(Lcom/instagram/filterkit/b/b;ILcom/instagram/filterkit/b/c;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->f:Ljava/util/Map;

    new-instance v1, Lcom/instagram/filterkit/b/d;

    invoke-direct {v1, p0, p2, p3}, Lcom/instagram/filterkit/b/d;-><init>(Lcom/instagram/filterkit/b/b;ILcom/instagram/filterkit/b/c;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/f;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p2}, Lcom/instagram/filterkit/b/f;->a(Ljava/nio/FloatBuffer;)V

    .line 175
    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uniform named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/f;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p2}, Lcom/instagram/filterkit/b/f;->a(Ljava/nio/IntBuffer;)V

    .line 185
    iget-object v1, p0, Lcom/instagram/filterkit/b/b;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uniform named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/nio/Buffer;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lcom/instagram/filterkit/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;)Lcom/instagram/filterkit/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/a;->a()I

    move-result v0

    .line 217
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 218
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move v3, v6

    .line 222
    :goto_0
    return v3

    .line 221
    :cond_0
    sget-object v0, Lcom/instagram/filterkit/b/b;->a:Ljava/lang/Class;

    const-string v0, "Attribute with name %s not found in program."

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/instagram/filterkit/b/b;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 236
    invoke-direct {p0}, Lcom/instagram/filterkit/b/b;->d()V

    .line 237
    invoke-direct {p0}, Lcom/instagram/filterkit/b/b;->c()V

    .line 238
    return-void
.end method
