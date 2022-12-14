/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: leoferre <leoferre@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/02 20:28:30 by leoferre          #+#    #+#             */
/*   Updated: 2022/08/02 20:29:21 by leoferre         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

int	ft_putchar(int c)
{
	write(1, &c, 1);
	return (1);
}

void	ft_putchar_fd(char c, int fd)
{
	write (fd, &c, 1);
}
