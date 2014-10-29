.class final Lcom/instagram/bugreport/a/a;
.super Lcom/instagram/bugreport/a/b;
.source "FbFlytrapRequest.java"


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
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/instagram/bugreport/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object p6, p0, Lcom/instagram/bugreport/a/a;->a:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/instagram/bugreport/a/a;->b:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/instagram/bugreport/a/b;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    .line 40
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/instagram/bugreport/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public final g_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    const-string v0, "https://graph.facebook.com/%s/bugs"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/bugreport/a/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
