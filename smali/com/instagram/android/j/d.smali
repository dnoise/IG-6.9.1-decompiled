.class public final Lcom/instagram/android/j/d;
.super Lcom/instagram/android/k/a/a;
.source "SearchUserListAdapter.java"


# instance fields
.field private final o:Lcom/instagram/android/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/j/e",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/j/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Landroid/support/v4/app/s;",
            "Lcom/instagram/android/j/e",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 21
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/k/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;)V

    .line 22
    iput-object p4, p0, Lcom/instagram/android/j/d;->o:Lcom/instagram/android/j/e;

    .line 23
    return-void
.end method


# virtual methods
.method public final c()Lcom/instagram/android/j/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/j/e",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/j/d;->o:Lcom/instagram/android/j/e;

    return-object v0
.end method
