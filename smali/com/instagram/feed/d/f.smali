.class public final Lcom/instagram/feed/d/f;
.super Ljava/lang/Object;
.source "CommentRenderCache.java"


# static fields
.field private static a:Lcom/instagram/feed/d/f;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
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
            "Landroid/text/SpannableStringBuilder;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/f;->b:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/f;->c:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/f;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/instagram/feed/d/f;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/instagram/feed/d/f;->b()V

    .line 88
    :cond_0
    sget-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;

    return-object v0
.end method

.method private b(Lcom/instagram/feed/d/b;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/feed/d/f;->a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b()V
    .locals 2

    .prologue
    .line 92
    const-class v1, Lcom/instagram/feed/d/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    monitor-exit v1

    return-void

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/feed/d/f;

    invoke-direct {v0}, Lcom/instagram/feed/d/f;-><init>()V

    sput-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/feed/d/f;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 67
    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p2}, Lcom/instagram/feed/d/f;->b(Lcom/instagram/feed/d/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/instagram/feed/d/b;->i()I

    move-result v1

    sget v2, Lcom/instagram/feed/d/d;->b:I

    if-eq v1, v2, :cond_1

    .line 72
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2, p3, p4}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I

    move-result v1

    .line 75
    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 76
    invoke-static {p1, p2, p3, p4}, Lcom/instagram/feed/d/g;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/instagram/feed/d/f;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object v0
.end method

.method final a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/feed/d/f;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 49
    if-nez v0, :cond_0

    .line 50
    invoke-static {p1, p2}, Lcom/instagram/feed/d/g;->a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/instagram/feed/d/f;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    return-object v0
.end method

.method public final a(Lcom/instagram/feed/d/b;)Ljava/lang/CharSequence;
    .locals 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/feed/d/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 30
    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/f;->b(Lcom/instagram/feed/d/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instagram/feed/d/g;->a(Lcom/instagram/feed/d/b;Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/instagram/feed/d/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    return-object v0
.end method
