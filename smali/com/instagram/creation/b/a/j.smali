.class public Lcom/instagram/creation/b/a/j;
.super Ljava/lang/Object;
.source "VideoUploadUrl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/creation/b/a/j;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/instagram/creation/b/a/j;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/instagram/creation/b/a/j;->c:Ljava/util/Date;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/creation/b/a/j;->c:Ljava/util/Date;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/creation/b/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/creation/b/a/j;->a:Ljava/lang/String;

    return-object v0
.end method
