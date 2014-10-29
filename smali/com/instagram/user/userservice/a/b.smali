.class public final Lcom/instagram/user/userservice/a/b;
.super Lcom/instagram/api/k/a/d;
.source "AutoCompleteUserListResponse.java"

# interfaces
.implements Lcom/instagram/user/userservice/c;


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
    .line 13
    invoke-direct {p0}, Lcom/instagram/api/k/a/d;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/user/userservice/a/b;->a:Ljava/util/List;

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/user/userservice/a/b;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/user/userservice/a/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/instagram/user/userservice/a/b;->b:J

    return-wide v0
.end method
