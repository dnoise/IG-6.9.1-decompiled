.class public abstract Lcom/instagram/android/fragment/eu;
.super Lcom/instagram/android/fragment/h;
.source "SimpleTopLevelFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/h",
        "<",
        "Lcom/instagram/android/feed/a/a;",
        "Lcom/instagram/feed/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/instagram/android/fragment/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final X()Lcom/instagram/android/feed/a/a;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/instagram/android/feed/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eu;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method
