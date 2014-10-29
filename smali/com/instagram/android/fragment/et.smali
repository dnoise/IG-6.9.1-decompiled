.class final Lcom/instagram/android/fragment/et;
.super Lcom/instagram/feed/a/a;
.source "ShortUrlFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/eo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/eo;Lcom/instagram/feed/f/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/eo;

    invoke-direct {p0, p2, p3}, Lcom/instagram/feed/a/a;-><init>(Lcom/instagram/feed/f/a;Z)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    const-string v0, "media/%s/info/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/eo;

    invoke-static {v3}, Lcom/instagram/android/fragment/eo;->b(Lcom/instagram/android/fragment/eo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
