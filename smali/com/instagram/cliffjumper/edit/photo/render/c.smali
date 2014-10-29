.class public Lcom/instagram/cliffjumper/edit/photo/render/c;
.super Ljava/lang/Object;
.source "ImageRenderer.java"

# interfaces
.implements Lcom/instagram/filterkit/c/d;


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
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/instagram/cliffjumper/edit/photo/render/g;

.field private final d:Lcom/instagram/filterkit/filter/IgFilter;

.field private final e:Lcom/instagram/filterkit/filter/IgFilter;

.field private final f:Lcom/instagram/filterkit/a/b;

.field private final g:Lcom/instagram/filterkit/e/a;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/render/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/instagram/cliffjumper/edit/photo/render/c;

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/render/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/photo/render/g;Lcom/instagram/filterkit/a/b;Lcom/instagram/filterkit/filter/IgFilter;Lcom/instagram/filterkit/filter/IgFilter;Lcom/instagram/filterkit/e/a;[Lcom/instagram/cliffjumper/edit/photo/render/h;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->b:Landroid/os/Handler;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->j:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->c:Lcom/instagram/cliffjumper/edit/photo/render/g;

    .line 54
    iput-object p3, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->f:Lcom/instagram/filterkit/a/b;

    .line 55
    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->d:Lcom/instagram/filterkit/filter/IgFilter;

    .line 56
    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->e:Lcom/instagram/filterkit/filter/IgFilter;

    .line 57
    iput-object p6, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    .line 59
    iput-object p7, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/render/c;)Lcom/instagram/cliffjumper/edit/photo/render/g;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->c:Lcom/instagram/cliffjumper/edit/photo/render/g;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/render/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/render/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 181
    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 184
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "_display_name"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "_data"

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/render/c;->a:Ljava/lang/Class;

    const-string v1, "Unable to insert media into media store"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()Lcom/instagram/cliffjumper/edit/photo/render/a;
    .locals 13

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/render/a;->b()Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 91
    :cond_0
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a()Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v7

    .line 94
    const/4 v2, 0x0

    .line 95
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->f:Lcom/instagram/filterkit/a/b;

    invoke-virtual {v1}, Lcom/instagram/filterkit/a/b;->b()Lcom/instagram/filterkit/d/c;

    move-result-object v11

    .line 97
    const/4 v1, 0x0

    move v8, v1

    move-object v4, v2

    :goto_1
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    array-length v1, v1

    if-ge v8, v1, :cond_a

    .line 98
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    aget-object v12, v1, v8

    .line 100
    iget-object v1, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 101
    iget v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->a:I

    .line 102
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v1

    if-eq v2, v1, :cond_5

    const/4 v1, 0x1

    .line 103
    :goto_2
    invoke-static {v12}, Lcom/instagram/cliffjumper/edit/photo/render/i;->a(Lcom/instagram/cliffjumper/edit/photo/render/h;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 104
    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    invoke-interface {v2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v2

    move v3, v2

    .line 108
    :goto_3
    iget-boolean v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->c:Z

    if-eqz v2, :cond_1

    if-nez v4, :cond_6

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 112
    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->e:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-static {v3}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v4

    invoke-interface {v1, v11, v2, v4}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    .line 117
    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    move-object v2, v1

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_3

    instance-of v1, v2, Lcom/instagram/filterkit/d/d;

    if-eqz v1, :cond_3

    .line 122
    move-object v0, v2

    check-cast v0, Lcom/instagram/filterkit/d/d;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/instagram/filterkit/d/d;->a()V

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-static {v3}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v3

    invoke-interface {v1, v11, v2, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    move-object v9, v1

    move-object v4, v2

    .line 137
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v11, v4, v1}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 144
    :goto_5
    if-eqz v9, :cond_4

    iget-object v1, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 145
    :cond_4
    const-wide/16 v4, -0x1

    .line 146
    sget v6, Lcom/instagram/cliffjumper/edit/photo/render/k;->b:I

    .line 147
    invoke-virtual {v7}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-result-object v1

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/render/b;->e:Lcom/instagram/cliffjumper/edit/photo/render/b;

    if-ne v1, v2, :cond_7

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->b:Lcom/instagram/cliffjumper/edit/photo/render/b;

    :goto_6
    move-object v10, v1

    .line 165
    :goto_7
    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/render/j;

    iget v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->a:I

    iget-object v3, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/instagram/cliffjumper/edit/photo/render/j;-><init>(ILjava/lang/String;JI)V

    .line 167
    invoke-virtual {v7, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a(Lcom/instagram/cliffjumper/edit/photo/render/j;)V

    .line 168
    invoke-virtual {v7, v10}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a(Lcom/instagram/cliffjumper/edit/photo/render/b;)V

    .line 97
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v4, v9

    goto/16 :goto_1

    .line 102
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 131
    :cond_6
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->e:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-static {v3}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v2

    invoke-interface {v1, v11, v4, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    move-object v9, v1

    goto :goto_4

    .line 147
    :cond_7
    invoke-virtual {v7}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-result-object v1

    goto :goto_6

    .line 150
    :cond_8
    const v1, 0x8d40

    invoke-interface {v9}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 152
    invoke-interface {v9}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->cacheImageInMemory(I)I

    move-result v1

    .line 153
    iget-boolean v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->d:Z

    if-eqz v2, :cond_9

    .line 154
    const-wide/16 v4, -0x1

    .line 155
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    new-instance v3, Lcom/instagram/cliffjumper/edit/photo/render/f;

    iget-object v6, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v6, v10}, Lcom/instagram/cliffjumper/edit/photo/render/f;-><init>(ILjava/lang/String;B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_8
    const/4 v1, 0x0

    invoke-virtual {v11, v9, v1}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 161
    sget v6, Lcom/instagram/cliffjumper/edit/photo/render/k;->a:I

    .line 162
    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-object v10, v1

    goto :goto_7

    .line 157
    :cond_9
    iget-object v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->a(ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_8

    :cond_a
    move-object v1, v7

    .line 171
    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/render/c;->a:Ljava/lang/Class;

    const-string v3, "ImageRenderer failed with exception: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 174
    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a(Ljava/lang/Exception;)Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    move v3, v2

    goto/16 :goto_3

    :cond_c
    move-object v9, v4

    goto/16 :goto_5
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/render/c;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/render/c;->b()Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/render/d;

    invoke-direct {v2, p0, v0}, Lcom/instagram/cliffjumper/edit/photo/render/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/c;Lcom/instagram/cliffjumper/edit/photo/render/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/render/e;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/render/e;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    :cond_0
    return-void
.end method
