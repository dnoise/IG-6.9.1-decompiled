.class public final Lcom/instagram/android/login/c/k;
.super Ljava/lang/Object;
.source "LookupRequest.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/c/j;

.field private b:Lcom/instagram/user/c/a;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/instagram/android/login/c/j;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/instagram/android/login/c/k;->a:Lcom/instagram/android/login/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/instagram/android/login/c/k;->b:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/instagram/android/login/c/k;->b:Lcom/instagram/user/c/a;

    .line 111
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/instagram/android/login/c/k;->c:Z

    .line 95
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/instagram/android/login/c/k;->d:Z

    .line 99
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/instagram/android/login/c/k;->d:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/instagram/android/login/c/k;->e:Z

    .line 103
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/instagram/android/login/c/k;->e:Z

    return v0
.end method
