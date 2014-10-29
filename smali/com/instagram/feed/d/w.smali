.class public final Lcom/instagram/feed/d/w;
.super Ljava/lang/Object;
.source "MediaRenderCache.java"


# static fields
.field private static a:Lcom/instagram/feed/d/w;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
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
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/instagram/feed/d/z;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lcom/instagram/feed/d/y;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 5
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/w;->b:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/w;->c:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/w;->d:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/w;->e:Ljava/util/Map;

    .line 69
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    new-instance v2, Lcom/instagram/feed/d/x;

    invoke-direct {v2, p0}, Lcom/instagram/feed/d/x;-><init>(Lcom/instagram/feed/d/w;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaRenderCacheWarm"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v1, Lcom/instagram/feed/d/z;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/instagram/feed/d/z;-><init>(Lcom/instagram/feed/d/w;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/instagram/feed/d/w;->f:Lcom/instagram/feed/d/z;

    .line 89
    iput-object p1, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    .line 92
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 93
    iget-object v1, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 94
    iget-object v1, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/as;->blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    .line 95
    iget-object v1, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/at;->font_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 96
    iget-object v1, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/as;->grey_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 98
    iget-object v1, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    sget v3, Lcom/facebook/at;->feed_content_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 101
    iget-object v2, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    sget v3, Lcom/facebook/at;->feed_comment_text_extra_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 104
    new-instance v3, Lcom/instagram/feed/d/y;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/instagram/feed/d/y;-><init>(Landroid/text/TextPaint;IFB)V

    iput-object v3, p0, Lcom/instagram/feed/d/w;->h:Lcom/instagram/feed/d/y;

    .line 106
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/instagram/feed/d/w;
    .locals 1
    .parameter

    .prologue
    .line 172
    sget-object v0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/w;

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/feed/d/w;->b(Landroid/content/Context;)V

    .line 175
    :cond_0
    sget-object v0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/w;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/feed/d/w;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/feed/d/w;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/feed/d/w;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/feed/d/w;->e:Ljava/util/Map;

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 179
    const-class v1, Lcom/instagram/feed/d/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    monitor-exit v1

    return-void

    .line 180
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/feed/d/w;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/feed/d/w;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/instagram/feed/d/w;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/feed/d/w;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .locals 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/feed/d/w;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 111
    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/aa;->b(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/instagram/feed/d/w;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/feed/d/w;->f:Lcom/instagram/feed/d/z;

    iget-object v1, p0, Lcom/instagram/feed/d/w;->f:Lcom/instagram/feed/d/z;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/instagram/feed/d/z;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/z;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .locals 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/feed/d/w;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 122
    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/instagram/feed/d/w;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    return-object v0
.end method

.method public final c(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .locals 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/feed/d/w;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 132
    if-nez v0, :cond_0

    .line 133
    invoke-static {p1}, Lcom/instagram/feed/d/aa;->a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/instagram/feed/d/w;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    return-object v0
.end method

.method public final d(Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/instagram/feed/d/w;->f:Lcom/instagram/feed/d/z;

    iget-object v1, p0, Lcom/instagram/feed/d/w;->f:Lcom/instagram/feed/d/z;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/instagram/feed/d/z;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/z;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method public final e(Lcom/instagram/feed/d/l;)Landroid/text/Layout;
    .locals 8
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/feed/d/w;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    .line 151
    if-nez v0, :cond_0

    .line 152
    iget-object v6, p0, Lcom/instagram/feed/d/w;->h:Lcom/instagram/feed/d/y;

    .line 153
    iget-object v0, p0, Lcom/instagram/feed/d/w;->g:Landroid/content/res/Resources;

    invoke-static {v6}, Lcom/instagram/feed/d/y;->a(Lcom/instagram/feed/d/y;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v6}, Lcom/instagram/feed/d/y;->b(Lcom/instagram/feed/d/y;)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/instagram/feed/d/aa;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 155
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {v6}, Lcom/instagram/feed/d/y;->a(Lcom/instagram/feed/d/y;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v6}, Lcom/instagram/feed/d/y;->b(Lcom/instagram/feed/d/y;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    invoke-static {v6}, Lcom/instagram/feed/d/y;->c(Lcom/instagram/feed/d/y;)F

    move-result v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 165
    iget-object v1, p0, Lcom/instagram/feed/d/w;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    return-object v0
.end method
