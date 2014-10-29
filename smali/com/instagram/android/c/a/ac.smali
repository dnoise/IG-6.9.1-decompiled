.class public final Lcom/instagram/android/c/a/ac;
.super Lcom/instagram/android/k/b/d;
.source "UserSearchRequest.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/android/k/b/d;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/android/c/a/ac;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    const-string v0, "q"

    iget-object v1, p0, Lcom/instagram/android/c/a/ac;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "users/search/"

    return-object v0
.end method
