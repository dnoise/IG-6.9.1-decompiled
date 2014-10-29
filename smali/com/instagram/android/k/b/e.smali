.class public final Lcom/instagram/android/k/b/e;
.super Lcom/instagram/api/k/a/d;
.source "UserListResponse.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/instagram/api/k/a/d;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/k/b/e;->a:Ljava/util/List;

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/k/b/e;->b:J

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/k/b/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/instagram/android/k/b/e;->b:J

    return-wide v0
.end method
