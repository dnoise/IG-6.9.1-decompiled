.class public final Lcom/instagram/common/g/c/e;
.super Ljava/lang/Object;
.source "IgVideoCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lcom/c/a/g;


# direct methods
.method public constructor <init>(Lcom/c/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/instagram/common/g/c/e;->a:Lcom/c/a/g;

    .line 81
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/common/g/c/e;->a:Lcom/c/a/g;

    invoke-virtual {v0}, Lcom/c/a/g;->a()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/common/g/c/e;->a:Lcom/c/a/g;

    invoke-virtual {v0}, Lcom/c/a/g;->close()V

    .line 90
    return-void
.end method
