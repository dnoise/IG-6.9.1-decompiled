.class final Lcom/instagram/android/fragment/ck;
.super Lcom/instagram/feed/a/a;
.source "LikedFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cj;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cj;Lcom/instagram/feed/f/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/fragment/ck;->a:Lcom/instagram/android/fragment/cj;

    invoke-direct {p0, p2, p3}, Lcom/instagram/feed/a/a;-><init>(Lcom/instagram/feed/f/a;Z)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "feed/liked/"

    return-object v0
.end method
