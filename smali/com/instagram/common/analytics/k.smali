.class final Lcom/instagram/common/analytics/k;
.super Ljava/lang/Object;
.source "AnalyticsStorage.java"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/instagram/common/analytics/n;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/k;->a:Ljava/io/File;

    .line 27
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/common/analytics/k;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/instagram/common/analytics/k;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "AnalyticsStorage"

    const-string v1, "Unable to open analytics storage."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/analytics/i;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/common/analytics/k;->a()V

    .line 32
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/common/analytics/k;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/instagram/common/analytics/n;->a(Lcom/instagram/common/analytics/i;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/common/analytics/i;->g()V

    .line 43
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    .line 45
    invoke-static {p1, v1}, Lcom/instagram/common/analytics/j;->a(Lcom/instagram/common/analytics/i;Lcom/fasterxml/jackson/a/h;)V

    .line 46
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    .line 48
    return-object v0
.end method
