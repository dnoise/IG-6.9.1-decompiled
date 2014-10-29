.class final Lcom/instagram/bugreport/a/h;
.super Lcom/instagram/bugreport/a/b;
.source "NonFbFlytrapRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/instagram/bugreport/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p6, p0, Lcom/instagram/bugreport/a/h;->a:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/instagram/bugreport/a/h;->b:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 6

    .prologue
    .line 45
    invoke-super {p0}, Lcom/instagram/bugreport/a/b;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    .line 46
    const-string v1, "access_token"

    const-string v2, "%s|%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/bugreport/a/h;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/instagram/bugreport/a/h;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final g_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    const-string v0, "https://graph.facebook.com/%s/bugs"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/bugreport/a/h;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
